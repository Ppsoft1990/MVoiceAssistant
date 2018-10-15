.class Lbad$b;
.super Landroid/os/AsyncTask;
.source "TranslationShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lbad$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbad$1;)V
    .locals 0
    .param p1, "x0"    # Lbad$1;

    .prologue
    .line 89
    invoke-direct {p0}, Lbad$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 93
    const/4 v3, 0x0

    aget-object v2, p1, v3

    check-cast v2, Landroid/view/View;

    .line 94
    .local v2, "view":Landroid/view/View;
    const/4 v3, 0x1

    aget-object v3, p1, v3

    check-cast v3, Lbad$a;

    iput-object v3, p0, Lbad$b;->a:Lbad$a;

    .line 96
    invoke-static {v2}, Lbad;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "cacheBmp":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-static {}, Lbad;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lbab;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Z

    .line 98
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lbad;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {}, Lbad;->a()Ljava/lang/String;

    move-result-object v3

    .line 102
    :goto_0
    return-object v3

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lbad$b;->a:Lbad$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lbad$b;->a:Lbad$a;

    invoke-interface {v0, p1}, Lbad$a;->imgComplete(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lbad$b;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lbad$b;->a(Ljava/lang/String;)V

    return-void
.end method
