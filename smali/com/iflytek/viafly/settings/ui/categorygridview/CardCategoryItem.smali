.class public Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;
.super Ljava/lang/Object;
.source "CardCategoryItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem$1;

    invoke-direct {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem$1;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->name:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->id:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->name:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->id:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CardCategoryItem;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
