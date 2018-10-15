.class Lcom/iflytek/viafly/im/IMHelper$3;
.super Landroid/os/AsyncTask;
.source "IMHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/im/IMHelper;->sendImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/im/IMHelper;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$suffix:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/im/IMHelper;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/im/IMHelper;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/iflytek/viafly/im/IMHelper$3;->this$0:Lcom/iflytek/viafly/im/IMHelper;

    iput-object p2, p0, Lcom/iflytek/viafly/im/IMHelper$3;->val$image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/iflytek/viafly/im/IMHelper$3;->val$suffix:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Object;

    .prologue
    .line 195
    const-string/jumbo v2, "IMHelper"

    const-string/jumbo v3, "doInBackground"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 197
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x64

    .line 198
    .local v1, "options":I
    iget-object v2, p0, Lcom/iflytek/viafly/im/IMHelper$3;->val$image:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 199
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    const/16 v3, 0x200

    if-le v2, v3, :cond_1

    .line 201
    add-int/lit8 v1, v1, -0xa

    .line 202
    const-string/jumbo v2, "IMHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doInBackground options="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-gez v1, :cond_0

    .line 204
    const-string/jumbo v0, "\u56fe\u7247\u8fc7\u5927\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u56fe\u7247\u8fdb\u884c\u4e0a\u4f20"

    .line 210
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-object v0

    .line 206
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 207
    iget-object v2, p0, Lcom/iflytek/viafly/im/IMHelper$3;->val$image:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 209
    :cond_1
    const-string/jumbo v2, "IMHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pic size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    div-int/lit16 v4, v4, 0x400

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 215
    const-string/jumbo v5, "IMHelper"

    const-string/jumbo v6, "onPostExecute"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 217
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 241
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 242
    return-void

    .line 218
    :cond_1
    instance-of v5, p1, Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 219
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .line 221
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 222
    .local v1, "bitmapByte":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "data:image/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/im/IMHelper$3;->val$suffix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";base64,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    .line 225
    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "resultBase64":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/iflytek/viafly/im/IMHelper$3;->this$0:Lcom/iflytek/viafly/im/IMHelper;

    invoke-static {v6}, Lcom/iflytek/viafly/im/IMHelper;->access$100(Lcom/iflytek/viafly/im/IMHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\')"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "jsMethod":Ljava/lang/String;
    const-string/jumbo v5, "IMHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "jsMethod = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v5, p0, Lcom/iflytek/viafly/im/IMHelper$3;->this$0:Lcom/iflytek/viafly/im/IMHelper;

    invoke-static {v5}, Lcom/iflytek/viafly/im/IMHelper;->access$200(Lcom/iflytek/viafly/im/IMHelper;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 237
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 231
    .end local v1    # "bitmapByte":[B
    .end local v3    # "jsMethod":Ljava/lang/String;
    .end local v4    # "resultBase64":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "\u4e0a\u4f20\u56fe\u7247\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 233
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 237
    :catch_2
    move-exception v5

    goto/16 :goto_0

    .line 235
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 236
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 238
    :goto_1
    throw v5

    .line 237
    :catch_3
    move-exception v6

    goto :goto_1
.end method
