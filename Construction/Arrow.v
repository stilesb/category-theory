Set Warnings "-notation-overridden".

Require Import Category.Lib.
Require Export Category.Theory.Functor.
Require Export Category.Construction.Comma.
Require Export Category.Instance.Cat.

Generalizable All Variables.
Set Primitive Projections.
Set Universe Polymorphism.
Unset Transparent Obligations.

Instance Arrow `{C : Category} : Category := (C ↓ C).

Notation "C ⃗" := (@Arrow C) (at level 90) : category_scope.