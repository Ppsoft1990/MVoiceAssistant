.class Lto$5;
.super Ljava/lang/Object;
.source "UserVoiceResetFragment.java"

# interfaces
.implements Ltj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lto;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lto;


# direct methods
.method constructor <init>(Lto;)V
    .locals 0
    .param p1, "this$0"    # Lto;

    .prologue
    .line 351
    iput-object p1, p0, Lto$5;->a:Lto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 355
    const-string/jumbo v2, "UserVoiceResetFragment"

    const-string/jumbo v3, "deleteUserVoicePrintSetted success "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v2, p0, Lto$5;->a:Lto;

    invoke-static {v2}, Lto;->e(Lto;)V

    .line 359
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2}, Lth;->b()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v1

    .line 360
    .local v1, "user":Lcom/iflytek/viafly/account/entity/User;
    if-eqz v1, :cond_0

    .line 361
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/account/entity/User;->setVoicePrintPasswordSetted(Z)V

    .line 363
    invoke-static {}, Lth;->a()Lth;

    move-result-object v2

    invoke-virtual {v2, v1}, Lth;->a(Lcom/iflytek/viafly/account/entity/User;)V

    .line 368
    :cond_0
    :try_start_0
    iget-object v2, p0, Lto$5;->a:Lto;

    invoke-virtual {v2}, Lto;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;->getFragmentMediator()Lcom/iflytek/yd/ui/FragmentMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/yd/ui/FragmentMediator;->pop()Lcom/iflytek/yd/ui/BaseFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "UserVoiceResetFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " finish error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string/jumbo v0, "UserVoiceResetFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteUserVoicePrintSetted error des "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lto$5;->a:Lto;

    const-string/jumbo v1, "\u91cd\u8bbe\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lto;->b(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "isExist"    # Z

    .prologue
    .line 383
    return-void
.end method
