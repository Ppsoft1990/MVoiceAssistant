.class Lmv$2;
.super Ljava/lang/Object;
.source "EarPlugHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmv;->a(Lmu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lmv;


# direct methods
.method constructor <init>(Lmv;I)V
    .locals 0
    .param p1, "this$0"    # Lmv;

    .prologue
    .line 342
    iput-object p1, p0, Lmv$2;->b:Lmv;

    iput p2, p0, Lmv$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 345
    const-string/jumbo v0, ""

    .line 346
    .local v0, "des":Ljava/lang/String;
    iget v1, p0, Lmv$2;->a:I

    packed-switch v1, :pswitch_data_0

    .line 366
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lmv$2;->b:Lmv;

    invoke-static {v1}, Lmv;->b(Lmv;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget v1, p0, Lmv$2;->a:I

    sget-object v3, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v3}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v3

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "\u64cd\u4f5c\u6210\u529f"

    :goto_1
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 368
    return-void

    .line 348
    :pswitch_1
    const-string/jumbo v0, "\u5185\u90e8\u9519\u8bef"

    .line 349
    goto :goto_0

    .line 351
    :pswitch_2
    const-string/jumbo v0, "\u4e0d\u5408\u6cd5\u7684APK"

    .line 352
    goto :goto_0

    .line 354
    :pswitch_3
    const-string/jumbo v0, "\u76f8\u540c\u7248\u672c\u7684APK\u5df2\u5b58\u5728"

    .line 355
    goto :goto_0

    .line 357
    :pswitch_4
    const-string/jumbo v0, "\u63d2\u4ef6\u6743\u9650\u8d8a\u754c"

    .line 358
    goto :goto_0

    .line 360
    :pswitch_5
    const-string/jumbo v0, "\u63d2\u4ef6so abi\u4e0e\u5bbf\u4e3b\u4e0d\u517c\u5bb9"

    .line 361
    goto :goto_0

    .line 363
    :pswitch_6
    const-string/jumbo v0, "\u8001\u7248\u672c\u7684\u63d2\u4ef6\u6b63\u5728\u8fd0\u884c\uff0c\u65b0\u63d2\u4ef6\u653e\u5165\u7f13\u5b58\u533a\uff0c\u4e0b\u6b21\u542f\u52a8\u65f6\u518d\u66f4\u65b0"

    goto :goto_0

    .line 366
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u64cd\u4f5c\u5931\u8d25\uff0c\u9519\u8bef\u7801\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lmv$2;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", \u539f\u56e0\uff1a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 346
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
