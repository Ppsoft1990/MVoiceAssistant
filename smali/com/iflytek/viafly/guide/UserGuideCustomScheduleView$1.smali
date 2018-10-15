.class Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView$1;
.super Ljava/lang/Object;
.source "UserGuideCustomScheduleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ScrollView;

.field final synthetic b:Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView$1;->b:Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView;

    iput-object p2, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView$1;->a:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/iflytek/viafly/guide/UserGuideCustomScheduleView$1;->a:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 118
    return-void
.end method
