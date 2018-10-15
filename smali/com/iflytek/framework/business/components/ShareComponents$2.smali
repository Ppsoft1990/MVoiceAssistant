.class Lcom/iflytek/framework/business/components/ShareComponents$2;
.super Ljava/lang/Object;
.source "ShareComponents.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/ShareComponents;->handleDownloadImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/ShareComponents;

.field final synthetic val$imgWebUrl:Ljava/lang/String;

.field final synthetic val$isParamsUnified:Z

.field final synthetic val$isTimeLine:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$shareFrom:Ljava/lang/String;

.field final synthetic val$shareText:Ljava/lang/String;

.field final synthetic val$shareTitle:Ljava/lang/String;

.field final synthetic val$shareUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/ShareComponents;Landroid/app/ProgressDialog;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/ShareComponents;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$imgWebUrl:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$isParamsUnified:Z

    iput-object p5, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareTitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareText:Ljava/lang/String;

    iput-object p7, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareFrom:Ljava/lang/String;

    iput-object p9, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$packageName:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$isTimeLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v5, 0x0

    .line 418
    const-string/jumbo v0, "Business_ShareComponents"

    const-string/jumbo v1, "onCancel called"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 420
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$imgWebUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lno;->d(Ljava/lang/String;)V

    .line 421
    iget-boolean v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$isParamsUnified:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    iget-object v1, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareText:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareFrom:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/iflytek/framework/business/components/ShareComponents;->access$100(Lcom/iflytek/framework/business/components/ShareComponents;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_0
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->this$0:Lcom/iflytek/framework/business/components/ShareComponents;

    invoke-virtual {v0}, Lcom/iflytek/framework/business/components/ShareComponents;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareTitle:Ljava/lang/String;

    iget-object v8, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$shareText:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/iflytek/framework/business/components/ShareComponents$2;->val$isTimeLine:Z

    invoke-static/range {v3 .. v9}, Lcom/iflytek/framework/ui/share/ShareUtils;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
