.class Lbeg$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lbeg;

.field final synthetic b:Lbeg;


# direct methods
.method constructor <init>(Lbeg;Lbeg;)V
    .locals 0

    iput-object p1, p0, Lbeg$a;->b:Lbeg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lbeg$a;->a:Lbeg;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lbeg$a;->a:Lbeg;

    invoke-static {v0}, Lbeg;->a(Lbeg;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lbeg$a;->b:Lbeg;

    invoke-virtual {v0}, Lbeg;->f()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lbeg$a;->a:Lbeg;

    invoke-virtual {v0}, Lbeg;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbeg$a;->a:Lbeg;

    invoke-static {v0}, Lbeg;->b(Lbeg;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbeg$a;->b([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbeg$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lbeg$a;->a([Ljava/lang/Void;)V

    return-void
.end method
