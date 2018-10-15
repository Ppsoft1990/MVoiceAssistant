.class Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadWrapper"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field rotoView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$1;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryAdapter$ReadWrapper;-><init>()V

    return-void
.end method
