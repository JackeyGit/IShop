<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="image/jpeg"  import="java.awt.*,java.awt.image.*,java.util.*,javax.imageio.*" %>
<%!

	public  final String allChar = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";


public Color getColor() {
		Random random = new Random();
		int r = random.nextInt(256);
		int g = random.nextInt(256);
		int b = random.nextInt(256);
		Color color = new Color(r, g, b);
		return color;
	}

	public String getCode() {
	
	StringBuffer sb = new StringBuffer();
		Random random = new Random();
		for (int i = 0; i < 5; i++) {
			sb.append(allChar.charAt(random.nextInt(allChar.length())));
		}
		return sb.toString();
   }

 

%>

<%	response.setHeader("pragma", "mo-cache");
	response.setHeader("cache-control", "no-cache");
	response.setDateHeader("expires", 0);
	
	BufferedImage image = new BufferedImage(120,38,BufferedImage.TYPE_INT_RGB);
	
	Graphics g = image.getGraphics();

	// 画笔颜色
	g.setColor(new Color(255, 235, 205));
	// 绘制长方形
	g.fillRect(0, 0, 250, 100);

	
	
	/*

public abstract void drawLine(int x1, int y1,int x2,int y2)


在此图形上下文的坐标系中，使用当前颜色在点 (x1, y1) 和 (x2, y2) 之间画一条线。 
参数：
x1 - 第一个点的 x 坐标。
y1 - 第一个点的 y 坐标。
x2 - 第二个点的 x 坐标。
y2 - 第二个点的 y 坐标。
	
	
	*/
	
	
	
	for (int i = 0; i < 30; i++) {
		Random random = new Random();
		int x = random.nextInt(80);
		int y = random.nextInt(30);
		int xl = random.nextInt(x+10);
		int yl = random.nextInt(y+10);
		g.setColor(getColor());
		g.drawLine(x, y, x + xl, y + yl);
	}
	
	
	g.setFont(new Font("Arial", Font.BOLD,23));
	g.setColor(Color.BLACK);
	String checkNum = getCode();//"2525"
	
	StringBuffer sb = new StringBuffer();
	for(int i=0;i<checkNum.length();i++){
		sb.append(checkNum.charAt(i)+" ");//"2 5 2 5"
	}
	g.drawString(sb.toString(),16,30);
	
	session.setAttribute("CHECKNUM",checkNum);//2525
	
	ImageIO.write(image,"jpeg",response.getOutputStream());
	out.clear();
	out = pageContext.pushBody();
	
%>

