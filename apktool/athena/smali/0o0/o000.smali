.class public final L0o0/o000;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L0o0/o000$1;,
        L0o0/o000$O00000Oo;,
        L0o0/o000$O000000o;
    }
.end annotation


# instance fields
.field private final O000000o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "L0o0/OO0o00;",
            "L0o0/o000$O000000o;",
            ">;"
        }
    .end annotation
.end field

.field private final O00000Oo:L0o0/o000$O00000Oo;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, L0o0/o000;->O000000o:Ljava/util/Map;

    .line 22
    new-instance v0, L0o0/o000$O00000Oo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, L0o0/o000$O00000Oo;-><init>(L0o0/o000$1;)V

    iput-object v0, p0, L0o0/o000;->O00000Oo:L0o0/o000$O00000Oo;

    .line 68
    return-void
.end method


# virtual methods
.method O000000o(L0o0/OO0o00;)V
    .locals 2

    .prologue
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, L0o0/o000;->O000000o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L0o0/o000$O000000o;

    .line 28
    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, L0o0/o000;->O00000Oo:L0o0/o000$O00000Oo;

    invoke-virtual {v0}, L0o0/o000$O00000Oo;->O000000o()L0o0/o000$O000000o;

    move-result-object v0

    .line 30
    iget-object v1, p0, L0o0/o000;->O000000o:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    iget v1, v0, L0o0/o000$O000000o;->O00000Oo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, L0o0/o000$O000000o;->O00000Oo:I

    .line 33
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, v0, L0o0/o000$O000000o;->O000000o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 36
    return-void

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method O00000Oo(L0o0/OO0o00;)V
    .locals 5

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, L0o0/o000;->O000000o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, L0o0/o000$O000000o;

    .line 42
    if-eqz v0, :cond_0

    iget v1, v0, L0o0/o000$O000000o;->O00000Oo:I

    if-gtz v1, :cond_2

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot release a lock that is not held, key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", interestedThreads: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43
    :cond_1
    :try_start_1
    iget v0, v0, L0o0/o000$O000000o;->O00000Oo:I

    goto :goto_0

    .line 48
    :cond_2
    iget v1, v0, L0o0/o000$O000000o;->O00000Oo:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, L0o0/o000$O000000o;->O00000Oo:I

    if-nez v1, :cond_4

    .line 49
    iget-object v1, p0, L0o0/o000;->O000000o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, L0o0/o000$O000000o;

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed the wrong lock, expected to remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but actually removed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_3
    iget-object v2, p0, L0o0/o000;->O00000Oo:L0o0/o000$O00000Oo;

    invoke-virtual {v2, v1}, L0o0/o000$O00000Oo;->O000000o(L0o0/o000$O000000o;)V

    .line 58
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    iget-object v0, v0, L0o0/o000$O000000o;->O000000o:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    return-void
.end method
