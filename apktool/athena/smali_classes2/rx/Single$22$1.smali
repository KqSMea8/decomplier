.class public Lrx/Single$22$1;
.super Lrx/Subscriber;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$22;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Single$22;

.field final synthetic val$serial:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/Single$22;Lrx/Subscriber;ZLrx/Subscriber;)V
    .locals 0

    .prologue
    .line 2154
    iput-object p1, p0, Lrx/Single$22$1;->this$1:Lrx/Single$22;

    iput-object p4, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 2170
    :try_start_0
    iget-object v0, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    iget-object v0, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 2174
    return-void

    .line 2172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 2162
    :try_start_0
    iget-object v0, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    iget-object v0, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->unsubscribe()V

    .line 2166
    return-void

    .line 2164
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2157
    iget-object v0, p0, Lrx/Single$22$1;->val$serial:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 2158
    return-void
.end method