Set Warnings "-notation-overridden".

Require Import Category.Lib.
Require Export Category.Theory.Functor.

Generalizable All Variables.
Set Primitive Projections.
Set Universe Polymorphism.

Section Natural.

Context `{C : Category}.
Context `{D : Category}.
Context `{F : C ⟶ D}.
Context `{G : C ⟶ D}.

Class Natural := {
  transform {X} : F X ~> G X;

  natural_transformation {X Y} (f : X ~> Y) :
    fmap[G] f ∘ transform ≈ transform ∘ fmap[F] f
}.

Global Program Instance Natural_Setoid : Setoid Natural.

End Natural.

Notation "F ⟹ G" := (@Natural _ _ F G)
  (at level 90, right associativity) : category_scope.

Notation "transform[ F ]" := (@transform _ _ _ _ F)
  (at level 9, format "transform[ F ]") : category_scope.

(* Natural transformations can be applied directly to functorial values to
   perform the functor mapping they imply. *)
Coercion transform : Natural >-> Funclass.
