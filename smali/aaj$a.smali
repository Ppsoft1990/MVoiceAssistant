.class Laaj$a;
.super Landroid/os/AsyncTask;
.source "SougouHMTPluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laaj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
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
.field final synthetic a:Laaj;

.field private b:Laaj$b;


# direct methods
.method private constructor <init>(Laaj;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Laaj$a;->a:Laaj;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laaj;Laaj$1;)V
    .locals 0
    .param p1, "x0"    # Laaj;
    .param p2, "x1"    # Laaj$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Laaj$a;-><init>(Laaj;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 348
    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/String;

    .line 349
    .local v2, "tNumber":Ljava/lang/String;
    invoke-static {}, Laaj;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AsynGetNumberInfoTask doInBackground, number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "local"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    .local v1, "tFlagLocalRequest":Z
    :goto_0
    const/4 v3, 0x2

    aget-object v3, p1, v3

    check-cast v3, Laaj$b;

    iput-object v3, p0, Laaj$a;->b:Laaj$b;

    .line 352
    iget-object v3, p0, Laaj$a;->a:Laaj;

    invoke-virtual {v3, v2, v1}, Laaj;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "resultMaskContent":Ljava/lang/String;
    return-object v0

    .end local v0    # "resultMaskContent":Ljava/lang/String;
    .end local v1    # "tFlagLocalRequest":Z
    :cond_0
    move v1, v4

    .line 350
    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Laaj$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 342
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "resultMaskContent":Ljava/lang/String;
    iget-object v1, p0, Laaj$a;->b:Laaj$b;

    invoke-interface {v1, v0}, Laaj$b;->a(Ljava/lang/String;)V

    .line 344
    return-void
.end method
