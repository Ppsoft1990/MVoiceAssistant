.class Laeu$4;
.super Laeh;
.source "ContactCreateItemViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laeu;->a(Lady;Laee;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laeu;


# direct methods
.method constructor <init>(Laeu;I)V
    .locals 0
    .param p1, "this$0"    # Laeu;
    .param p2, "interval"    # I

    .prologue
    .line 202
    iput-object p1, p0, Laeu$4;->a:Laeu;

    invoke-direct {p0, p2}, Laeh;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 205
    iget-object v4, p0, Laeu$4;->a:Laeu;

    invoke-static {v4}, Laeu;->d(Laeu;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "contactNameText":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 207
    .local v3, "numberArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Laeu$4;->a:Laeu;

    iget-object v4, v4, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 208
    iget-object v4, p0, Laeu$4;->a:Laeu;

    iget-object v4, v4, Laeu;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 212
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 213
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 215
    iget-object v4, p0, Laeu$4;->a:Laeu;

    invoke-static {v4}, Laeu;->c(Laeu;)Lada;

    move-result-object v4

    const-string/jumbo v5, "contactSave"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lada;->exec(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;

    .line 216
    iget-object v4, p0, Laeu$4;->a:Laeu;

    invoke-static {v4}, Laeu;->c(Laeu;)Lada;

    move-result-object v4

    invoke-virtual {v4}, Lada;->a()V

    .line 219
    invoke-static {v7}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->a(Landroid/app/Activity;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;->b(Landroid/widget/EditText;)Lcom/iflytek/framework/browser/mic/MainSpeechPresenter;

    .line 220
    return-void
.end method
