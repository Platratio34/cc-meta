---@meta

vector = {} --- CC's vector library

---Construct a new Vector with the given coordinates.
---@param x number The X coordinate or direction of the vector.
---@param y number The Y coordinate or direction of the vector.
---@param z number The Z coordinate or direction of the vector.
---@return Vector vector The constructed vector.
function vector.new(x, y, z) end

---@class Vector
---@field x number
---@field y number
---@field z number
local Vector = {}

---Adds two vectors together.
---@param o Vector The second vector to add.
---@return Vector vector The resulting vector
function Vector:add(o) end

---Subtracts  two vectors together.
---@param o Vector The second vector to subtract.
---@return Vector vector The resulting vector
function Vector:sub(o) end

---Multiplies a vector by a scalar value.
---@param factor number The scalar value to multiply with.
---@return Vector vector The resulting vector
function Vector:mul(factor) end

---Negate a vector
---@return Vector vector The negated vector
function Vector:unm() end

---Compute the dot product of two vectors
---@param o Vector The second vector to compute the dot product of.
---@return number The dot product of `self` and `o`.
function Vector:dot(o) end

---Compute the cross product of two vectors
---@param o Vector The second vector to compute the cross product of.
---@return Vector vector The cross product of `self` and `o`.
function Vector:cross(o) end

---Get the length (also referred to as magnitude) of this vector.
---@return number length The length of this vector.
function Vector:length() end

---Divide this vector by its length, producing with the same direction, but of length 1.
---@return Vector vector The normalized vector
function Vector:normalize() end

---Construct a vector with each dimension rounded to the nearest value.
---@param tolerance? number The tolerance that we should round to, defaulting to `1`. For instance, a tolerance of 0.5 will round to the nearest 0.5.
---@return Vector vector The rounded vector.
function Vector:round(tolerance) end

---Convert this vector into a string, for pretty printing.
---@return string str This vector's string representation.
function Vector:tostring() end

---Check for equality between two vectors.
---@param other Vector The second vector to compare to.
---@return boolean equal Whether or not the vectors are equal.
function Vector:equals(other) end