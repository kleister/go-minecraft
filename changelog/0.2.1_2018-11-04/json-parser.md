Change: Use standard JSON parser instead of jsoniter

Intitially we implemented jsoniter as a JSON parser library, but in the end we
decided that it's better to stick with the standard library JSON parser.

https://github.com/kleister/go-minecraft/pull/4
