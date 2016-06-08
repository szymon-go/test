<?php
namespace Domain;

class UUID 
{
   public function generate()
   {
	return rand(100000, 7);		
   }
}
