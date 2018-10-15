.class Lavn$a;
.super Ljava/lang/Object;
.source "ScheduleNotifyGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Lcom/iflytek/base/skin/customView/XLinearLayout;

.field final synthetic f:Lavn;


# direct methods
.method private constructor <init>(Lavn;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lavn$a;->f:Lavn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lavn;Lavn$1;)V
    .locals 0
    .param p1, "x0"    # Lavn;
    .param p2, "x1"    # Lavn$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lavn$a;-><init>(Lavn;)V

    return-void
.end method
