---@meta

---@class SpeakerPeripheral CC's speaker peripheral
local SpeakerPeripheral = {}

---Plays a note block note through the speaker.
---
---This takes the name of a note to play, as well as optionally the volume and pitch to play the note at.
---
---The pitch argument uses semitones as the unit.
---This directly maps to the number of clicks on a note block.
---For reference, 0, 12, and 24 map to F#, and 6 and 18 map to C.
---
---A maximum of 8 notes can be played in a single tick.
---If this limit is hit, this function will return false.
---
---#### Valid instruments
---
---The speaker supports all of Minecraft's noteblock instruments. These are:
---
---`"harp"`, `"basedrum"`, `"snare"`, `"hat"`, `"bass"`, `"flute", `"bell"`, `"guitar"`, `"chime"`,
---`"xylophone"`, `"iron_xylophone"`, `"cow_bell"`, `"didgeridoo"`, `"bit"`, `"banjo"` and `"pling"`.
---
---@param instrument string The instrument to use to play this note.
---@param volume? number The volume to play the note at, from 0.0 to 3.0. Defaults to 1.0.
---@param pitch? number The pitch to play the note at in semitones, from 0 to 24. Defaults to 12.
---@return boolean played Whether the note could be played as the limit was reached.
function SpeakerPeripheral.playeNote(instrument, volume, pitch) end

---Plays a Minecraft sound through the speaker.
---
---This takes the name of a Minecraft sound, such as "minecraft:block.note_block.harp", as well as an optional volume and pitch.
---
---Only one sound can be played at once. This function will return false if another sound was started this tick, or if some audio is still playing.
---@param name string The name of the sound to play.
---@param volume? number The volume to play the sound at, from 0.0 to 3.0. Defaults to 1.0.
---@param pitch? number The speed to play the sound at, from 0.5 to 2.0. Defaults to 1.0.
---@return boolean played Whether the sound could be played.
function SpeakerPeripheral.playSound(name, volume, pitch) end

---Attempt to stream some audio data to the speaker.
---
---This accepts a list of audio samples as amplitudes between -128 and 127.
---These are stored in an internal buffer and played back at 48kHz.
---If this buffer is full, this function will return `false`.
---Programs should wait for a `speaker_audio_empty` event before trying to play audio again.
---
---The speaker only buffers a single call to `playAudio` at once.
---This means if you try to play a small number of samples, you'll have a lot of stutter.
---You should try to play as many samples in one call as possible (up to 128×1024),
---as this reduces the chances of audio stuttering or halting, especially when the server or computer is lagging.
---    
---While the speaker accepts 8-bit PCM audio, the audio stream is re-encoded before being played.
---This means that the supplied samples may not be played out exactly.
---
---@param audio number[] A list of amplitudes.
---@param volume? number The volume to play this audio at. If not given, defaults to the previous volume given to `playAudio`.
---@return boolean accepted If there was room to accept this audio data.
function SpeakerPeripheral.playAudio(audio, volume) end

---Stop all audio being played by this speaker.
---
---This clears any audio that playAudio had queued and stops the latest sound played by playSound.
function SpeakerPeripheral.stop() end