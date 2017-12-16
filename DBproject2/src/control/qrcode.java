package control;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sun.image.codec.jpeg.*;
import com.swetake.util.Qrcode;

@WebServlet("/qrcode")
public class qrcode extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		try {
			qrcodeMake(url, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
	public void qrcodeMake(String arg, HttpServletResponse res) throws Exception {

		Qrcode qrcode = new Qrcode();
		qrcode.setQrcodeErrorCorrect('M');
		qrcode.setQrcodeEncodeMode('B');
		qrcode.setQrcodeVersion(7);

		BufferedImage bi = new BufferedImage(139, 139, BufferedImage.TYPE_INT_RGB);

		Graphics2D g = bi.createGraphics();
		g.setBackground(Color.WHITE);
		g.clearRect(0, 0, 139, 139);

		g.setColor(Color.BLACK);
		
		byte[] d = null;

		d = arg.getBytes("8859_1");
		if (d.length > 0 && d.length < 123) {
			boolean[][] b = qrcode.calQrcode(d);
			for (int i = 0; i < b.length; i++) {
				for (int j = 0; j < b.length; j++) {
					if (b[j][i]) {
						g.fillRect(j * 3 + 2, i * 3 + 2, 3, 3);
					}
				}
			}
		}
		g.dispose();
		bi.flush();

		res.setContentType("image/jpeg");
		ServletOutputStream os = res.getOutputStream();
		JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
		encoder.encode(bi);
		os.flush();
		os.close();
	}


}

