/*
 * person_detection_test.h
 *
 *  Created on: Jun 14, 2024
 *      Author: Tu
 */

#ifndef PERSON_DETECTION_PERSON_DETECTION_TEST_H_
#define PERSON_DETECTION_PERSON_DETECTION_TEST_H_

#ifdef __cplusplus
extern "C"
{
#endif

void person_detection_init(void);
void person_detection_run(void);
int person_detection_input(void);
void person_detection_output(void);

#ifdef __cplusplus
}
#endif

#endif /* PERSON_DETECTION_PERSON_DETECTION_TEST_H_ */
