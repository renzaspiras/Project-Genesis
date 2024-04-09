use gtk::prelude::*;
use gtk::{Window, WindowType};

fn main() {
    // Initialize GTK
    gtk::init().expect("Failed to initialize GTK.");

    let title = "Coders";
    let height = 500;
    let width = 700;

    let window = Window::new(WindowType::Toplevel);
    window.set_title("My Window");
    window.set_default_size(width, height);

    // Connect the "destroy" event to quit the GTK main loop
    window.connect_destroy(|_| {
        gtk::main_quit();
    });

    window.show_all();

    // Start the GTK main event loop
    gtk::main();
}
