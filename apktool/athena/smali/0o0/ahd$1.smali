.class public synthetic L0o0/ahd$1;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L0o0/ahd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic O000000o:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 269
    invoke-static {}, L0o0/ahd$O000000o;->values()[L0o0/ahd$O000000o;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, L0o0/ahd$1;->O000000o:[I

    :try_start_0
    sget-object v0, L0o0/ahd$1;->O000000o:[I

    sget-object v1, L0o0/ahd$O000000o;->O000000o:L0o0/ahd$O000000o;

    invoke-virtual {v1}, L0o0/ahd$O000000o;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, L0o0/ahd$1;->O000000o:[I

    sget-object v1, L0o0/ahd$O000000o;->O00000Oo:L0o0/ahd$O000000o;

    invoke-virtual {v1}, L0o0/ahd$O000000o;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method