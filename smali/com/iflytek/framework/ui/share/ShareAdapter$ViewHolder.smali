.class Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/ui/share/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field image:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/ui/share/ShareAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/ui/share/ShareAdapter$1;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/iflytek/framework/ui/share/ShareAdapter$ViewHolder;-><init>()V

    return-void
.end method
