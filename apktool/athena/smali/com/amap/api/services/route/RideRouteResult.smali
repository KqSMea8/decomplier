.class public Lcom/amap/api/services/route/RideRouteResult;
.super Lcom/amap/api/services/route/RouteResult;
.source "RideRouteResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RideRouteResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private O000000o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RidePath;",
            ">;"
        }
    .end annotation
.end field

.field private O00000Oo:Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/amap/api/services/route/RideRouteResult$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RideRouteResult$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RideRouteResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/amap/api/services/route/RouteResult;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O000000o:Ljava/util/List;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/amap/api/services/route/RouteResult;-><init>(Landroid/os/Parcel;)V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O000000o:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/amap/api/services/route/RidePath;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O000000o:Ljava/util/List;

    .line 58
    const-class v0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    iput-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O00000Oo:Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    .line 60
    return-void
.end method


# virtual methods
.method public O000000o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RidePath;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O000000o:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/amap/api/services/route/RouteResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    iget-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O000000o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 48
    iget-object v0, p0, Lcom/amap/api/services/route/RideRouteResult;->O00000Oo:Lcom/amap/api/services/route/RouteSearch$RideRouteQuery;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 49
    return-void
.end method
