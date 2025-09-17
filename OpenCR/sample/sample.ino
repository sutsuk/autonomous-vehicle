#include "pins-opencr.h"
#include "notes.h"

#define NUM_BDPIN_LED     5
#define NUM_BDPIN_PUSH_SW 2

int sound_notes[] = {
  NOTE_E6
};
int sound_note_durations[] = {
  4
};
int bdpin_led[NUM_BDPIN_LED] = {
  BDPIN_LED_BUILTIN,
  BDPIN_LED_USER_1,
  BDPIN_LED_USER_2,
  BDPIN_LED_USER_3,
  BDPIN_LED_USER_4
};
int bdpin_push_sw[NUM_BDPIN_PUSH_SW] = {
  BDPIN_PUSH_SW_1,
  BDPIN_PUSH_SW_2
};

void setup() {
  pinMode(BDPIN_BUZZER, OUTPUT);
  for (int a = 0; a < sizeof(sound_notes) / sizeof(int); a++) {
    int sound_note_duration = 1000 / sound_note_durations[a];
    tone(BDPIN_BUZZER, sound_notes[a], sound_note_duration);
    delay(sound_note_duration);
    noTone(BDPIN_BUZZER);
  }
  for (int a = 0; a < NUM_BDPIN_LED; a++) {
    pinMode(bdpin_led[a], OUTPUT);
  }
  for (int a = 0; a < NUM_BDPIN_PUSH_SW; a++) {
    pinMode(bdpin_push_sw[a], INPUT);
  }
}

void loop() {
  int push_sw_state[NUM_BDPIN_PUSH_SW];
  for (int a = 0; a < NUM_BDPIN_LED; a++) {
    digitalWrite(bdpin_led[a], HIGH);
    delay(100);
  } 
  for (int a = 0; a < NUM_BDPIN_LED; a++) {
    digitalWrite(bdpin_led[NUM_BDPIN_LED - 1 - a], LOW);
    delay(100);
  }
  for (int a = 0; a < NUM_BDPIN_PUSH_SW; a++) {
    push_sw_state[a] = digitalRead(bdpin_push_sw[a]);
    Serial.printf("push_sw_state[%d] = %d\n", a, push_sw_state[a]);
  }
}
