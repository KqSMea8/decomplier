.class public Lcom/google/android/gms/analytics/internal/O000O0OO$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/internal/O000O0OO;->O000000o(Lcom/google/android/gms/analytics/internal/O00O0OOo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/google/android/gms/analytics/internal/O00O0OOo;

.field final synthetic O00000Oo:Lcom/google/android/gms/analytics/internal/O000O0OO;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/O000O0OO;Lcom/google/android/gms/analytics/internal/O00O0OOo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/O000O0OO$5;->O00000Oo:Lcom/google/android/gms/analytics/internal/O000O0OO;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/O000O0OO$5;->O000000o:Lcom/google/android/gms/analytics/internal/O00O0OOo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/O000O0OO$5;->O00000Oo:Lcom/google/android/gms/analytics/internal/O000O0OO;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/O000O0OO;->O000000o(Lcom/google/android/gms/analytics/internal/O000O0OO;)Lcom/google/android/gms/analytics/internal/O00O0Oo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/O000O0OO$5;->O000000o:Lcom/google/android/gms/analytics/internal/O00O0OOo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/O00O0Oo;->O000000o(Lcom/google/android/gms/analytics/internal/O00O0OOo;)V

    return-void
.end method