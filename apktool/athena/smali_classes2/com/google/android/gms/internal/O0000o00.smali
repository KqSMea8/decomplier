.class public Lcom/google/android/gms/internal/O0000o00;
.super Lcom/google/android/gms/common/internal/O000O00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/O000O00o",
        "<",
        "Lcom/google/android/gms/internal/O0000o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/O0000o00;Lcom/google/android/gms/common/api/O00000o0$O00000Oo;Lcom/google/android/gms/common/api/O00000o0$O00000o0;)V
    .locals 7

    const/16 v3, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/O000O00o;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/O0000o00;Lcom/google/android/gms/common/api/O00000o0$O00000Oo;Lcom/google/android/gms/common/api/O00000o0$O00000o0;)V

    return-void
.end method


# virtual methods
.method protected synthetic O000000o(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/O0000o00;->O00000Oo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/O0000o;

    move-result-object v0

    return-object v0
.end method

.method protected O00000Oo(Landroid/os/IBinder;)Lcom/google/android/gms/internal/O0000o;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/O0000o$O000000o;->O000000o(Landroid/os/IBinder;)Lcom/google/android/gms/internal/O0000o;

    move-result-object v0

    return-object v0
.end method

.method protected O0000O0o()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.service.START"

    return-object v0
.end method

.method protected O0000OOo()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.clearcut.internal.IClearcutLoggerService"

    return-object v0
.end method