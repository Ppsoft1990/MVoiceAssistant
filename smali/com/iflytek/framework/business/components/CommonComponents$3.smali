.class Lcom/iflytek/framework/business/components/CommonComponents$3;
.super Ljava/lang/Object;
.source "CommonComponents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/CommonComponents;->showDelayGuide(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/CommonComponents;

.field final synthetic val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/CommonComponents;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/CommonComponents;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/iflytek/framework/business/components/CommonComponents$3;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/CommonComponents$3;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 586
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_MUSIC_PLAY_SETTING"

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 587
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents$3;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-static {v0, v2}, Lcom/iflytek/framework/business/components/CommonComponents;->access$200(Lcom/iflytek/framework/business/components/CommonComponents;Z)V

    .line 588
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents$3;->val$builder:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 589
    return-void
.end method
