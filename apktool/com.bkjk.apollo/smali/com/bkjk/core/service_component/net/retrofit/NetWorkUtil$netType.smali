.class public final enum Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;
.super Ljava/lang/Enum;
.source "NetWorkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "netType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

.field public static final enum CMNET:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

.field public static final enum CMWAP:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

.field public static final enum WIFI:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

.field public static final enum noneNet:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->WIFI:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    new-instance v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    const-string v1, "CMNET"

    invoke-direct {v0, v1, v3}, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->CMNET:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    new-instance v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    const-string v1, "CMWAP"

    invoke-direct {v0, v1, v4}, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->CMWAP:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    new-instance v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    const-string v1, "noneNet"

    invoke-direct {v0, v1, v5}, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->noneNet:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    sget-object v1, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->WIFI:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->CMNET:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->CMWAP:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->noneNet:Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->$VALUES:[Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    return-object v0
.end method

.method public static values()[Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->$VALUES:[Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    invoke-virtual {v0}, [Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bkjk/core/service_component/net/retrofit/NetWorkUtil$netType;

    return-object v0
.end method