.class public abstract Lcom/facebook/datasource/b;
.super Ljava/lang/Object;
.source "BaseDataSubscriber.java"

# interfaces
.implements Lcom/facebook/datasource/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/datasource/e",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellation(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method public onFailure(Lcom/facebook/datasource/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/b;->onFailureImpl(Lcom/facebook/datasource/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-interface {p1}, Lcom/facebook/datasource/c;->h()Z

    .line 63
    return-void

    .line 61
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/facebook/datasource/c;->h()Z

    throw v0
.end method

.method protected abstract onFailureImpl(Lcom/facebook/datasource/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public onNewResult(Lcom/facebook/datasource/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lcom/facebook/datasource/c;->b()Z

    move-result v0

    .line 48
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/datasource/b;->onNewResultImpl(Lcom/facebook/datasource/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-interface {p1}, Lcom/facebook/datasource/c;->h()Z

    .line 54
    :cond_0
    return-void

    .line 50
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {p1}, Lcom/facebook/datasource/c;->h()Z

    :cond_1
    throw v1
.end method

.method protected abstract onNewResultImpl(Lcom/facebook/datasource/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public onProgressUpdate(Lcom/facebook/datasource/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    return-void
.end method