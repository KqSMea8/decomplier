.class public L0o0/ol;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        L0o0/ol$1;,
        L0o0/ol$O000000o;
    }
.end annotation


# static fields
.field private static O000000o:L0o0/ol$O000000o;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static O000000o(Ljava/lang/Class;)L0o0/ok;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "L0o0/ok;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, L0o0/ol;->O000000o(Ljava/lang/String;)L0o0/ok;

    move-result-object v0

    return-object v0
.end method

.method public static O000000o(Ljava/lang/String;)L0o0/ok;
    .locals 2

    .prologue
    .line 38
    sget-object v0, L0o0/ol;->O000000o:L0o0/ol$O000000o;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, L0o0/ol;->O000000o()L0o0/ol$O000000o;

    move-result-object v0

    sput-object v0, L0o0/ol;->O000000o:L0o0/ol$O000000o;

    .line 41
    :cond_0
    new-instance v0, L0o0/ok;

    sget-object v1, L0o0/ol;->O000000o:L0o0/ol$O000000o;

    invoke-virtual {v1, p0}, L0o0/ol$O000000o;->O000000o(Ljava/lang/String;)L0o0/oj;

    move-result-object v1

    invoke-direct {v0, v1}, L0o0/ok;-><init>(L0o0/oj;)V

    return-object v0
.end method

.method private static O000000o()L0o0/ol$O000000o;
    .locals 5

    .prologue
    .line 63
    const-string v0, "com.j256.ormlite.logger.type"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    :try_start_0
    invoke-static {v0}, L0o0/ol$O000000o;->valueOf(Ljava/lang/String;)L0o0/ol$O000000o;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    new-instance v1, L0o0/oi;

    const-class v2, L0o0/ol;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, L0o0/oi;-><init>(Ljava/lang/String;)V

    .line 69
    sget-object v2, L0o0/oj$O000000o;->O00000o:L0o0/oj$O000000o;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find valid log-type from system property \'com.j256.ormlite.logger.type\', value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, L0o0/oj;->O000000o(L0o0/oj$O000000o;Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-static {}, L0o0/ol$O000000o;->values()[L0o0/ol$O000000o;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 75
    invoke-virtual {v0}, L0o0/ol$O000000o;->O000000o()Z

    move-result v4

    if-nez v4, :cond_0

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 80
    :cond_2
    sget-object v0, L0o0/ol$O000000o;->O00000oo:L0o0/ol$O000000o;

    goto :goto_0
.end method

.method public static O00000Oo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 53
    :goto_0
    return-object p0

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method