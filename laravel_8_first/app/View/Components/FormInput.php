<?php

namespace App\View\Components;

use Illuminate\View\Component;

class FormInput extends Component
{
    /**
     * Create a new component instance.
     *
     * @return void
     */
    public $type;
    public $name;
    public $label;
    public $marks;
    // $type,$name,$label,$input_value=""
    public function __construct($type,$name,$label,$mark)
    {
        $this->type = $type;
        $this->name = $name;
        $this->label = $label;
        $this->marks = $mark;
    }

    /**
     * Get the view / contents that represent the component.
     *
     * @return \Illuminate\Contracts\View\View|\Closure|string
     */
    public function render()
    {
        return view('components.form-input');
    }
}
