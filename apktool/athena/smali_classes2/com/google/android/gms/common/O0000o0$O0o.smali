.class public final Lcom/google/android/gms/common/O0000o0$O0o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/O0000o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "O0o"
.end annotation


# static fields
.field static final O000000o:[Lcom/google/android/gms/common/O0000o0$O000000o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/common/O0000o0$O000000o;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/O0000o0$O0o$1;

    const-string v3, "0\u0082\u0003&0\u0082\u0002\u00e4\u00a0\u0003\u0002\u0001\u0002\u0002\u0004L\u00d0\u00b560\u000b\u0006\u0007*\u0086"

    invoke-static {v3}, Lcom/google/android/gms/common/O0000o0$O000000o;->O000000o(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/O0000o0$O0o$1;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/O0000o0$O0o;->O000000o:[Lcom/google/android/gms/common/O0000o0$O000000o;

    return-void
.end method