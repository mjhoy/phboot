Feature: Generating html from jpgs

  In order to put photos online very easily and
  in the way I want them,
  As a super lazy kinda-geek photog,
  I want a script takes a directory of images and
  generates the html necessary to view them.

  Scenario: empty directory
    Given a directory named "foo"
    When I run phboot with "foo"
    Then the output should contain "go shoot some photos!"

  Scenario: images in directory
    Given a directory named "baz"
    And an empty file named "baz/louie01.jpg"
    And an empty file named "baz/louie02.jpg"
    When I run phboot with "baz"
    Then the output should contain "generating html..."
    And the following files should exist:
     |index.html|
