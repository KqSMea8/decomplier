.class public Lcom/bkjk/athena_home/activity/HomeSearchActivity$3;
.super Ljava/lang/Object;
.source "HomeSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bkjk/athena_home/activity/HomeSearchActivity;->O00000o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static O000000o:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic O00000Oo:Lcom/bkjk/athena_home/activity/HomeSearchActivity;


# direct methods
.method constructor <init>(Lcom/bkjk/athena_home/activity/HomeSearchActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/bkjk/athena_home/activity/HomeSearchActivity$3;->O00000Oo:Lcom/bkjk/athena_home/activity/HomeSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v4, 0xcf2

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/bkjk/athena_home/activity/HomeSearchActivity$3;->O000000o:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->isSupport([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/bkjk/athena_home/activity/HomeSearchActivity$3;->O000000o:Lcom/meituan/robust/ChangeQuickRedirect;

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/meituan/robust/PatchProxy;->accessDispatch([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZI[Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/bkjk/athena_home/activity/HomeSearchActivity$3;->O00000Oo:Lcom/bkjk/athena_home/activity/HomeSearchActivity;

    invoke-static {v0}, Lcom/bkjk/athena_home/activity/HomeSearchActivity;->O0000O0o(Lcom/bkjk/athena_home/activity/HomeSearchActivity;)V

    goto :goto_0
.end method
