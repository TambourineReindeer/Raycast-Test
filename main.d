module main;

import std.stdio;
import derelict.opengl3.glx;
import derelict.opengl3.gl;

import octree;
import renderer;
import voxel;

GLXWindow window;
GLXFBConfig config;
GLXDrawable canvas; // OpenGL canvas
Display* display;
Renderer renderer;

void main(string[] args)
{
	// Load GL 1.1
	DerelictGL.load();
	canvas = new GLXDrawable(this());
	renderer = new Renderer(this());

	da_glXCreateWindow(display,config,window,int);

	// Load GL 1.2+
	DerelictGL.reload();

	// Prints "Hello World" string in console
	writeln("Hello World!");

	da_glXDestroyWindow(display,window);
	// Lets the user press <Return> before program returns
	stdin.readln();
}

