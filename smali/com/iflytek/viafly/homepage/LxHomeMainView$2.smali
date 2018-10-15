.class Lcom/iflytek/viafly/homepage/LxHomeMainView$2;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeMainView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$2;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1481
    return-void
.end method
