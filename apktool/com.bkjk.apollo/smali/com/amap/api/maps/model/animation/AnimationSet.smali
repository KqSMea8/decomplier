.class public Lcom/amap/api/maps/model/animation/AnimationSet;
.super Lcom/amap/api/maps/model/animation/Animation;
.source "AnimationSet.java"


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/amap/api/maps/model/animation/Animation;-><init>()V

    .line 13
    new-instance v0, Lcom/amap/api/col/ch;

    invoke-direct {v0, p1}, Lcom/amap/api/col/ch;-><init>(Z)V

    iput-object v0, p0, Lcom/amap/api/maps/model/animation/AnimationSet;->glAnimation:Lcom/amap/api/col/cg;

    .line 14
    return-void
.end method


# virtual methods
.method public addAnimation(Lcom/amap/api/maps/model/animation/Animation;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/amap/api/maps/model/animation/AnimationSet;->glAnimation:Lcom/amap/api/col/cg;

    check-cast v0, Lcom/amap/api/col/ch;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ch;->a(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 32
    return-void
.end method

.method public cleanAnimation()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/amap/api/maps/model/animation/AnimationSet;->glAnimation:Lcom/amap/api/col/cg;

    check-cast v0, Lcom/amap/api/col/ch;

    invoke-virtual {v0}, Lcom/amap/api/col/ch;->o()V

    .line 39
    return-void
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/maps/model/animation/AnimationSet;->glAnimation:Lcom/amap/api/col/cg;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/cg;->a(J)V

    .line 19
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/amap/api/maps/model/animation/AnimationSet;->glAnimation:Lcom/amap/api/col/cg;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cg;->a(Landroid/view/animation/Interpolator;)V

    .line 24
    return-void
.end method
