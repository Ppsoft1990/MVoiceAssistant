.class Laoy$a;
.super Ljava/lang/Object;
.source "FuzzySearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/iflytek/base/skin/customView/XImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Laoy;


# direct methods
.method private constructor <init>(Laoy;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Laoy$a;->d:Laoy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laoy;Laoy$1;)V
    .locals 0
    .param p1, "x0"    # Laoy;
    .param p2, "x1"    # Laoy$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Laoy$a;-><init>(Laoy;)V

    return-void
.end method
