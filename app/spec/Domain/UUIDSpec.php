<?php

namespace spec\Domain;

use PhpSpec\ObjectBehavior;
use Prophecy\Argument;

class UUIDSpec extends ObjectBehavior
{
    function it_is_initializable()
    {
        $this->shouldHaveType('Domain\UUID');
    }
}
