.class Lcom/iflytek/viafly/homepage/LxHomeMainView$10;
.super Ljava/lang/Object;
.source "LxHomeMainView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;->z()V
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
    .line 1450
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$10;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1453
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$10;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->x(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 1454
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1455
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "tel"

    const-string/jumbo v2, "400-101-1118"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1456
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1459
    iget-object v1, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$10;->a:Lcom/iflytek/viafly/homepage/LxHomeMainView;

    invoke-static {v1}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1460
    return-void
.end method
