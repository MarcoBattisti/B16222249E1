<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Form extends Model
{
    private $name;
    private $email;
    private $subject;
    private $body;
    private $sendCopy;
    private $secret;
    private $response;

    /**
     * Form constructor.
     * @param $name
     * @param $email
     * @param $subject
     * @param $body
     * @param $sendCopy
     */
    public function __construct($name, $email, $subject, $body, $sendCopy)
    {
        $this->name = $name;
        $this->email = $email;
        $this->subject = $subject;
        $this->body = $body;
        $this->sendCopy = $sendCopy;
    }


    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name): void
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @param mixed $email
     */
    public function setEmail($email): void
    {
        $this->email = $email;
    }

    /**
     * @return mixed
     */
    public function getSubject()
    {
        return $this->subject;
    }

    /**
     * @param mixed $subject
     */
    public function setSubject($subject): void
    {
        $this->subject = $subject;
    }

    /**
     * @return mixed
     */
    public function getBody()
    {
        return $this->body;
    }

    /**
     * @param mixed $body
     */
    public function setBody($body): void
    {
        $this->body = $body;
    }

    /**
     * @return mixed
     */
    public function getSendCopy()
    {
        return $this->sendCopy;
    }

    /**
     * @param mixed $sendCopy
     */
    public function setSendCopy($sendCopy): void
    {
        $this->sendCopy = $sendCopy;
    }
}
