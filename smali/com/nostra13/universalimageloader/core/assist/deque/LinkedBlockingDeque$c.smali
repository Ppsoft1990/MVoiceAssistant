.class Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;
.super Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V
    .locals 0

    .prologue
    .line 1113
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.c;"
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$a;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
    .param p2, "x1"    # Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;

    .prologue
    .line 1113
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.c;"
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method a()Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1114
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.c;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;->d:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    return-object v0
.end method

.method a(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;)Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;)",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1115
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$c;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>.c;"
    .local p1, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d<TE;>;"
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;->c:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$d;

    return-object v0
.end method
