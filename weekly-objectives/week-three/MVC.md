## Broader goal - week 3
### * * Explain the MVC pattern *

#### What is the MVC pattern?

MVC stands for the model, the view and the controller.

The Model contains only the pure application data, it contains no logic describing how to present the data to a user.

The View presents the model’s data to the user. The view knows how to access the model’s data, but it does not know what this data means or what the user can do to manipulate it.

The Controller exists between the view and the model. It listens to events triggered by the view (or another external source) and executes the appropriate reaction to these events. In most cases, the reaction is to call a method on the model. Since the view and the model are connected through a notification mechanism, the result of this action is then automatically reflected in the view.

#### A model of this relationship can be found here:

![MVC model](weekly-objectives/week-three/MVC-model.png)
