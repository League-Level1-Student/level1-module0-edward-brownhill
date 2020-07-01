package _07_fortune_cookie;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Random;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class fortuneCookie implements ActionListener {
	public void showButton() {
		System.out.println("Button Clicked");
		JFrame frame = new JFrame();
		frame.setVisible(true);
		JButton button = new JButton("click for your fortune");
		frame.add(button);
		frame.pack();
		button.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		JOptionPane.showMessageDialog(null, "Woohoo!");	
		int rand = new Random().nextInt(5);
		if(rand == 0) {
			JOptionPane.showMessageDialog(null, "hello");
		}
		else if(rand == 1) {
			JOptionPane.showMessageDialog(null, "goodbye");
		}
		else if(rand == 2) {
			JOptionPane.showMessageDialog(null, "uh idk");
		}
		else if(rand == 3) {
			JOptionPane.showMessageDialog(null, "you have rolled 3");
		}
		else 
			JOptionPane.showMessageDialog(null, "4.");
	}
}
