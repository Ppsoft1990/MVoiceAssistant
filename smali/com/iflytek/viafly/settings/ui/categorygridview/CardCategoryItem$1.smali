.class final Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem$1;
.super Ljava/lang/Object;
.source "CardCategoryItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 61
    new-array v0, p1, [Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem$1;->newArray(I)[Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;

    move-result-object v0

    return-object v0
.end method
