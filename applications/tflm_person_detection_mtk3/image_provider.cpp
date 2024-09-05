#include <cstring>
#include "image_provider.h"

TfLiteStatus GetImageFromMemory(int8_t* dest, const unsigned char* src, size_t size)
{
    memcpy(dest, src, size);
    return kTfLiteOk;
}
