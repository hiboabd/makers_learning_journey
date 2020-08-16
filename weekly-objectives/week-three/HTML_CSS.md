## Broader goal - week 3
### * * Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS) *

#### What is HTML?

HTML (HyperText Markup Language) is the most basic building block of the Web. It defines the meaning and structure of web content. Other technologies besides HTML are generally used to describe a web page's appearance/presentation (CSS) or functionality/behaviour (JavaScript).

HTML is a fairly simple language made up of elements, which can be applied to pieces of text to give them:
  - different meaning in a document (Is it a paragraph? Is it a bulleted list? Is it part of a table?),
  - structure a document into logical sections (Does it have a header? Three columns of content? A navigation menu?),
  - and embed content such as images and videos into a page.

Note: HTML is not a programming language; it is a markup language used to tell your browser how to structure the web pages you visit.

#### Anatomy of an HTML element

The main parts of our element are:

    - The opening tag: This consists of the name of the element (in this case, p), wrapped in opening and closing angle brackets. This states where the element begins or starts to take effect — in this case where the start of the paragraph is.
    - The closing tag: This is the same as the opening tag, except that it includes a forward slash before the element name. This states where the element ends — in this case where the end of the paragraph is. Failing to include a closing tag is a common beginner error and can lead to strange results.
    - The content: This is the content of the element, which in this case is just text.
    - The element: The opening tag plus the closing tag plus the content equals the element.

#### What is CSS?

While HTML is used to define the structure and semantics of your content, CSS (Cascading Style Sheets) is used to style it and lay it out. For example, you can use CSS to alter the font, colour, size, and spacing of your content, split it into multiple columns, or add animations and other decorative features.

CSS (Cascading Style Sheets) is a declarative language that controls how webpages look in the browser. The browser applies CSS style declarations to selected elements to display them properly. A style declaration contains the properties and their values, which determine how a webpage looks.

A CSS rule is a set of properties associated with a selector. Here is an example that makes every HTML paragraph yellow against a black background:

```
/* The selector "p" indicate that all paragraphs in the document will be affected by that rule */
p {
  /* The "color" property defines the text color, in this case yellow. */
  color: yellow;

  /* The "background-color" property defines the background color, in this case black. */
  background-color: black
}
```
"Cascading" refers to the rules that govern how selectors are prioritised to change a page's appearance. This is a very important feature, since a complex website can have thousands of CSS rules.
