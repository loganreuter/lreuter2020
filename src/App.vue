<script setup>
import NavBar from './components/NavBar.vue'
import CoverImage from './components/CoverImage.vue'

import EducationTile from './components/EducationTile.vue'
import ExperienceTimeline from './components/ExperienceTimeline.vue'
import ProjectTile from './components/ProjectTile.vue'

const coverImg = new URL("./assets/cover-img.png", import.meta.url).href

import gearURL from "./assets/noun-gear-1241.svg"
import resumeURL from "./assets/Reuter Full Resume.pdf"
import rambleURL from "./assets/ramble-sample.svg"
import fryerURL from "./assets/potato-ball-fryer.png"
import wingURL from "./assets/birdwing.png"
import pipeURL from "./assets/pipe.png"
import NNURL from "./assets/ViTPose.png"
import heatTransferLink from "./assets/EME165 Final Project.pdf"
import genesisURL from "./assets/genesis-sample.svg"
import hapticHelperImgURL from "./assets/haptic-helper.jpg"
import hapticHelperReport from "./assets/219_Project_Report.pdf"
import gyroURL from "./assets/chicken_gyro_gyroscope.jpg"
import roboticsFinalImgURL from "./assets/robotics-final.jpg"
import ViTPoseReport from "./assets/ViTPoseFinalReport.pdf"

</script>

<template>
  <NavBar />

  <div id="content">
    <section id="cover">

      <div class="intro-content">
        Hi, my name is Logan. I am a

        <h1 class="intro">
          Mechanical <br> Engineer
        </h1>
      </div>

      <div class="cover-img-wrapper">
        <CoverImage />
      </div>

    </section>

    <section id="about">
      <div class="img-wrapper">
        <img class="about-img" :src="coverImg" loading="lazy">
        <svg class="gear-svg" width="1200pt" height="1200pt" version="1.1" viewBox="0 0 1200 1200"
          xmlns="http://www.w3.org/2000/svg">
          <path
            d="m 1146.3 632.73 c -66.984 -17.953 -82.164 -175.02 -27.215 -206.73 c 18.012 -10.441 31.98 -25.246 41.207 -42.324 c -14.293 -52.117 -63.059 -127.2 -90.574 -160.6 c -20.113 -0.9375 -40.68 3.6602 -59.398 14.473 c -59.941 34.633 -183.85 -57.996 -165.39 -126.94 c 5.7734 -21.539 2.7227 -47.664 -1.9805 -62.93 c -34.066 -17.617 -114.74 -41.316 -174.66 -47.184 c -12.91 9.3945 -27.695 32.113 -33.457 53.797 c -19.547 72.898 -174.24 83.496 -207.42 26.039 c -11.074 -19.199 -31.477 -37.078 -45.574 -42.961 c -38.762 11.746 -122.99 60.574 -157.05 88.766 c 2.3516 19.969 2.8086 43.164 14.258 62.965 c 33.156 57.469 -56.641 185.26 -127.55 166.26 c -23.328 -6.2383 -47.809 -4.4648 -67.777 3.7578 c -16.457 36.43 -41.359 132.52 -43.711 171.27 c 4.7031 10.57 32.746 29.137 55.176 35.137 c 96.516 25.871 97.273 167.41 27.348 207.78 c -19.754 11.41 -36.672 27.254 -43.715 47.23 c 11.746 37.586 58.957 120.21 89.496 155.46 c 19.969 2.3398 43.164 -2.7852 62.977 -14.242 c 62.449 -36.086 187.34 48.77 166.23 127.57 c -5.4844 20.508 -2.4492 42.086 1.0664 63.238 c 46.992 19.969 132 48.059 178.99 46.883 c 15.266 -14.102 24.684 -33.742 30.047 -53.797 c 18.48 -68.977 171.04 -90.984 207.09 -28.535 c 10.066 17.461 24.168 34.031 40.609 43.43 c 49.332 -14.102 136.05 -62.629 165.46 -93.168 c 1.1523 -22.309 -7.2461 -40.945 -17.688 -59.062 c -38.965 -67.43 52.055 -185.5 126.9 -165.43 c 20.496 5.4727 42.816 3.625 61.621 -1.0664 c 16.441 -41.125 43.703 -114.59 48.383 -175.67 c -16.441 -18.793 -32.039 -27.613 -53.688 -33.422 z z"
            fill-rule="evenodd" />
        </svg>
      </div>

      <div class="about-wrapper">
        <h1 class="section-title" style="color: var(--teal);">About Me</h1>
        <p>

          Hello! I am Logan, a mechanical engineer with a passion for design, mechatronics, and robotics.
          I recently completed my M.S. in Mechanical Engineering at UC San Diego, where I focused on robotic systems and strengthening
          my engineering foundations.

          <br> <br>

          I enjoy working at the intersection of hardware and software; designing systems that explore areas of actuation, control, and design.
          I strive to become a jack of all trades when it comes to engineering which makes me eager to learn knew
          concepts whenever I come across them.

          <br> <br>
          
          In my free time, I am always tinkering with personal projects or learning new skills.
          Outside of my engineering, I enjoy photography, playing the guitar, and painting. All of which
          help keep my creative juices flowing while providing a great balance to my work.
        </p>
      </div>
    </section>

    <section id="resume">
      <div class="resume-content-wrapper">
        <div class="education-wrapper">
          <h1 class="section-title">
            Resume
          </h1>
          <h2>Education:</h2>
          <EducationTile degree="M.S. Mechanical Engineering" school="UC San Diego" date="June 2025"
            :isExpected="false" />
          <EducationTile degree="B.S. Mechanical Engineering" school="UC Davis" date="June 2024" :isExpected="false" />
        
            <a class="download-link" :href="resumeURL" target="#">
              Download
              <svg class="download-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M12 21l-8-9h6v-12h4v12h6l-8 9zm9-1v2h-18v-2h-2v4h22v-4h-2z" />
              </svg>
            </a>
        </div>

        <div class="experience-wrapper">
          <h2>Experience:</h2>
          <ExperienceTimeline :experience="
        [
          {
            title: 'Mechatronics Intern',
            company: 'Ultima Genomics',
            startDate: 'June 2024',
            endDate: 'Sept. 2024',
          },
          {
            title: 'Undergraduate Researcher',
            company: 'BIRD Lab',
            startDate: 'Feb. 2024',
            endDate: 'June 2024',
          },
          {
            title: 'Shop Tech',
            company: 'Engineering Student Design Center',
            startDate: 'Aug. 2023',
            endDate: 'June 2024',
          },
          {
            title: 'Mechatronics Intern',
            company: 'Ultima Genomics',
            startDate: 'June 2023',
            endDate: 'Aug. 2023',
          },
          {
            title: 'Undergraduate Researcher',
            company: 'ARMS Lab',
            startDate: 'May 2023',
            endDate: 'June 2024',
          },
          {
            title: 'Robotic Intern',
            company: 'CSTEM Lab',
            startDate: 'April 2022',
            endDate: 'May 2022',
          },
          {
            title: 'Engineering Intern',
            company: 'KVAL Inc',
            startDate: 'June 2019',
            endDate: 'Aug. 2021',
          },
        ]" />
        </div>
      </div>

    </section>

    <section id="projects">
      <h1 class="section-title" style="color: var(--orange); text-align: center;">
        Projects
      </h1>

      <ProjectTile class="flip" title="Human Keypoint Estimation" :image="NNURL" endDate="June 2025" 
        :link="ViTPoseReport" altText="Final Report">
        For the final project for ECE285 (Introduction to Computer Vision), I recreated the ViTPose neural network model proposed by Xu et al. [<a href="https://arxiv.org/abs/2204.12484" target="#">link</a>]
        The network utilizes a standard vision transformer paired with a simple decoder to identify human keypoints (e.g. wrist, ankle, head).
        The project encompassed all of the various aspects of creating a neural network: creating the model, choosing the dataset, training the model,
        evaluation of the results, and debugging. The reason I chose this project to complete was to serve as a stepping stone for future projects. Human keypoint estimation
        allows a system to retrieve input from people without a physical interface, which would allow for a number of cool projects.
      </ProjectTile>

      <ProjectTile title="Robotics Final" :image="roboticsFinalImgURL" endDate="March 2025"
        link="https://docs.google.com/document/d/1A2_n9OK0q9do_Wl2d3dW2X3klAOe7WKtcjpwHUf6HaQ/edit?usp=sharing" altText="Final Report">
        The final project for MAE204 (Robotics) at UCSD was to write software required to control a youBot which is a 5R
        arm attached
        to a base with 4 Mecanum wheels. The robot was tasked with picking up a block at a given location and placing
        the block at a specified location
        with a desired orientation. The software consists of 3 main components: a trajectory generator which consists of
        all necessary trajectory segments
        required to accomplish the task, a feedforward + feedback controller, and a kinematics simulator which uses
        odometry to calculate the current configuration
        of the robot. These components work together to generate a csv file containing the configuration of each of the
        component of the youBot which is then run
        through CoppeliaSim to simulate the execution of the task and validate the software.
      </ProjectTile>

      <ProjectTile class="flip" title="Haptic Helper" :image="hapticHelperImgURL" startDate="Nov. 2024"
        endDate="Dec. 2024" :link="hapticHelperReport" altText="Research Report">
        For the design project in my Design and Control of Haptics System course, my team and I designed a device to
        allow stroke
        patients to receive physical therapy at home. The design works by simulating the sensation of opening a door and
        a jar. We
        programmed the system to be both assistive and resistive, to initial help the user become comfortable with the
        motion before
        strengthening their ability to complete the motion. Our device has 2 degrees of freedom, rotational and
        translational to further
        the realism of our device and utilizes motors with encoders for position feedback.
      </ProjectTile>

      <ProjectTile title="Ramble" :isWIP="true" :image="rambleURL" link="https://github.com/ReLo-Learning/ramble"
        altText="Source">
        Ramble is the programming language I have been designing off and on for a few years now and is still in early
        development.
        The compiler is currently written in C++, but I plan to rewrite it in Ramble once it is stable enough.
        The language targets LLVM IR and uses Clang to convert that into machine code. Ramble is heavily influenced by
        Go, C/C++, and Rust.
        The inspiration for the project was to better understand how compilers work, because they used to seem like
        magic,
        I also hope to get a functional language out of it that suites my preferred syntax.
      </ProjectTile>

      <ProjectTile class="flip" title="Potato Ball Fryer" startDate="Jan. 2024" endDate="June 2024" :image="fryerURL"
        link="https://docs.google.com/document/d/1IK_m6umkTJ-nl_tkw3YDz5LQBzt_VR5MPYiPPsju_8o/export?format=pdf"
        altText="Design Report">
        The Potato Ball Fryer was my senior capston project which we had 20 weeks to complete.
        The potato ball fryer is an autonomous fryer system designed to cook Khanom khai nok kratha, which is a Thai
        street food.
        The fryer works by moving a stirrer up and down to produce varying levels of pressure while providing continuous
        rotational motion.
        This project was my Senior Capstone Project. For this project I led the mechanical design of the fryer system,
        designed the electrical system and wrote the software to get the machine to operate.
        We used Fusion 360 for all the CAD work due to its ability to allow people to easily contribute on different
        operating systems.
      </ProjectTile>

      <ProjectTile title="Bird Wing Slicer" startDate="Feb. 2024" endDate="June 2024" :image="wingURL">
        This was the main project I completed for the BIRD Lab at UC Davis, where I wrote a Python script to convert a
        3D scan of a bird wing into 2D airfoils.
        I made use of Python's multithreading capabilities to speed up the process because I needed to parse over a
        thousand 3D scans.
        The script would output a specified number of slices with their vertices stored in a csv file, and a png
        depicting the airfoil for visual identification.
        After slicing, the data needed to be filtered to remove outlying data points and produce a smooth airfoil for
        future aerodynamic testing.
        The code was able to parse the 1000 files in roughly 20 minutes.
        This data will eventually be used to publish a research paper charactering various bird species and the
        aerodynamics of their wings.
      </ProjectTile>

      <ProjectTile class="flip" title="Pipe Heat Transfer" endDate="Nov. 2023" :image="pipeURL" :link="heatTransferLink"
        altText="Final Report">
        For the final project of my heat transfer class I wrote a MatLab script that calculated the heat transfer inside
        of a pipe at steady state conditions.
        I derived the equations needed to determine the temperature throughout the pipe as a function of θ.
        The script works by calculating the temperature throughout the pipe, assuming a default temperature of 0 °C,
        the updated values are then stored in a matrix and used on the next iteration to calculate the new temperature
        values.
        This process is repeated until the change in temperature between iterations becomes negligible.
        Finally, the script produces a heat map around the pipe and displays it to the user.
      </ProjectTile>

      <ProjectTile title="Ethos" endDate="July 2023" :image="genesisURL" link="https://github.com/loganreuter/Genesis"
        altText="Source Code">
        Genesis is a 32-bit virtual machine that takes a custom set of machine code written entirely in C.
        The project was a way to learn more about how machines work at a lower level and strengthen my skills in C, and
        an introduction to assembly.
      </ProjectTile>

      <ProjectTile class="flip" title="'The Chicken Gyro' Gyroscope" endDate="May 2022" :image="gyroURL">
        As part of the EME50 curriculum at UC Davis, I manufactured a gyroscope which needed to continuously spin for a
        minimum of 2 minutes.
        The manufacturing process for the gyroscope consisted of numerous different technics such as manual mill, manual
        lathe, CNC lathe, drilling, tapping, and oxy-acetylene welding.
        At the end of the course we had a spin off to see whose gyroscope could spin the longest, I came in 3rd with a
        time of 4 minutes and 17 seconds.
      </ProjectTile>
    </section>

    <footer>
      © 2025 Logan Reuter
    </footer>
  </div>

</template>

<style lang="scss" scoped>
section
{
  padding: 2em;
  text-align: left;
  display: flex;
  max-width: 1900px;
  min-height: 100vh;
  height: fit-content;
}

#content
{
  height: 100%;
}

#cover
{
  // height: 100vh;
  flex-flow: row wrap;
  justify-content: space-evenly;
  align-items: center;
  gap: 2em;
  padding-top: 7em;

  .intro-content
  {
    font-weight: 600;
    font-size: 24px;
    color: var(--gray);

    .intro
    {
      color: var(--yellow);
      text-shadow: 4px 4px var(--gray);
      -webkit-text-stroke: 2px var(--gray);
    }
  }

  .cover-img-wrapper
  {
    height: 100%;
    // min-height: 200px;
    max-width: 50%;
    display: flex;
    flex: 1 1 0;
    flex-flow: column nowrap;
    justify-content: center;
    align-items: center;
  }

}

#about
{
  // height: 100vh;
  flex-flow: row wrap-reverse;
  justify-content: center;
  align-items: center;
  gap: 2em 10em;

  font-weight: 500;

  background-color: var(--white);
  padding: 10px 20px;
  padding-bottom: 5em;
  border-top: 3px solid var(--gray);
  border-bottom: 3px solid var(--gray);


  .img-wrapper
  {
    height: 70%;
    margin: auto;
    position: relative;
  }

  .about-img
  {
    height: 100%;
    background-color: var(--blue);
    padding: 2em 2em 0em 2em;

    border: 6px solid var(--gray);
    border-radius: 15px;
    box-shadow: 6px 6px var(--gray);
  }

  .gear-svg
  {
    fill: var(--green);
    position: absolute;
    width: 75%;
    height: 75%;
    right: -30%;
    bottom: -20%;
    transform: rotate(30deg);
  }

  .about-wrapper
  {
    width: 50%;
    // align-self: flex-end;
  }
}

#resume
{
  display: block;

  .download-link
  {
    font-size: 12pt;
    margin: 0;
    padding: 0.5em 1em;
    line-height: 1rem;
    text-shadow: 1px 1px var(--gray);
    -webkit-text-stroke: 0px;
    background-color: var(--white);
    border: 2px solid var(--gray);
    color: var(--gray);
    border-radius: 15px;
    display: flex;
    flex-flow: row nowrap;
    justify-content: center;
    align-items: center;
    gap: 0.5em;

    .download-icon
    {
      width: 1em;
    }
  }

  .resume-content-wrapper
  {
    display: flex;
    flex-flow: row wrap;
    justify-content: center;
    align-items: flex-start;
    gap: 10em;

    .education-wrapper
    {
      display: flex;
      flex-flow: column nowrap;
      justify-content: center;
      align-items: center;
      gap: 2em;

      width: fit-content;
    }

    .experience-wrapper
    {
      text-align: center;
      max-width: 50%;
      min-width: 600px;
      // flex: 1 1 0;
      // width: fit-content;
    }
  }  
}

#projects
{
  padding-right: 0;
  padding-left: 0;
  flex-flow: column;
  gap: 5em;

  background-color: var(--white);
  border-top: 3px solid var(--gray);
  border-bottom: 3px solid var(--gray);
}

footer
{
  padding: 1em;
  font-size: 16px;
  color: var(--gray);
  font-weight: 500;
}
</style>
