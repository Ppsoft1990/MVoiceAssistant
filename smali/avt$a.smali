.class Lavt$a;
.super Ljava/lang/Object;
.source "ScheduleDoneListDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lavt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/iflytek/base/skin/customView/XImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/iflytek/base/skin/customView/XImageView;

.field public e:Lcom/iflytek/base/skin/customView/XTextView;

.field public f:Landroid/view/View;

.field final synthetic g:Lavt;


# direct methods
.method private constructor <init>(Lavt;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lavt$a;->g:Lavt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lavt;Lavt$1;)V
    .locals 0
    .param p1, "x0"    # Lavt;
    .param p2, "x1"    # Lavt$1;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lavt$a;-><init>(Lavt;)V

    return-void
.end method
