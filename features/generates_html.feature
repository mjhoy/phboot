Feature: Generating html from jpgs

  In order to put photos online very easily and
  in the way I want them,
  As a super lazy kinda-geek photog,
  I want a script takes a directory of images and
  generates the html necessary to view them.

  Background:
    Given a directory named "baz"
    And an empty file named "baz/louie01.jpg"
    And an empty file named "baz/louie02.jpg"

  Scenario: empty directory
    Given a directory named "foo"
    When I run phboot with "foo"
    Then the output should contain "go shoot some photos!"

  @wip
  Scenario: images in directory
    When I run phboot with "baz"
    Then the output should contain "generating html..."
    And the following files should exist:
     |baz/phboot/index.html|
     |baz/phboot/images/louie01.jpg|
     |baz/phboot/images/louie02.jpg|

  Scenario: Conflicting files
    Given an empty file named "baz/phboot/index.html"
    When I run phboot with "baz"
    Then the output should contain "phboot/index.html exists. Use -f to force"
    And the following files should not exist:
      |baz/phboot/images/louie01.jpg|
      |baz/phboot/images/louie02.jpg|
