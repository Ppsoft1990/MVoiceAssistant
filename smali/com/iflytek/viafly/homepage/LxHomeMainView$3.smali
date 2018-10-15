.class Lcom/iflytek/viafly/homepage/LxHomeMainView$3;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;->B()V
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
    .line 1524
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1529
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v1

    iget-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$3;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v0}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    sget-object v3, Lcom/iflytek/common/cmccauth/log/AuthScene;->FORGROUND_ACTIVE:Lcom/iflytek/common/cmccauth/log/AuthScene;

    const-string/jumbo v4, "loginWindow"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/app/Activity;Lnd;Lcom/iflytek/common/cmccauth/log/AuthScene;Ljava/lang/String;)V

    .line 1530
    return-void
.end method
