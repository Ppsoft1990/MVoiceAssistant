.class Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:Ljava/lang/StringBuilder;

.field b:Ljava/io/File;

.field final synthetic c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2960
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    .line 2955
    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->d:I

    .line 2956
    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->e:I

    .line 2958
    iput-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->f:Z

    .line 2961
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 2962
    .local v1, "root":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "dslv_state.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->b:Ljava/io/File;

    .line 2964
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2966
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 2967
    const-string/jumbo v2, "mobeta"

    const-string/jumbo v3, "file created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2974
    :cond_0
    :goto_0
    return-void

    .line 2968
    :catch_0
    move-exception v0

    .line 2969
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "mobeta"

    const-string/jumbo v3, "Could not create dslv_state.txt"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    const-string/jumbo v2, "mobeta"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2978
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->e:I

    .line 2979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->f:Z

    .line 2980
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    .line 2983
    iget-boolean v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->f:Z

    if-nez v3, :cond_1

    .line 3034
    :cond_0
    :goto_0
    return-void

    .line 2987
    :cond_1
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildCount()I

    move-result v0

    .line 2989
    .local v0, "children":I
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2990
    .local v1, "first":I
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2992
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2994
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2996
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2998
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v4, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3000
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 3003
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v4, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3002
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3005
    :cond_4
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3008
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 3009
    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->l(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</FirstExpBlankHeight>\n"

    .line 3010
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3011
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3012
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    .line 3013
    invoke-static {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->c(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->m(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->d(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</SecondExpBlankHeight>\n"

    .line 3014
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->h(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->j(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v5}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</SrcHeight>\n"

    .line 3017
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3018
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->x(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3020
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->r(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 3023
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c:Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;

    invoke-virtual {v6, v2}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;->a(Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3022
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3025
    :cond_5
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3028
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->d:I

    .line 3030
    iget v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->d:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    .line 3031
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c()V

    .line 3032
    const/4 v3, 0x0

    iput v3, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->d:I

    goto/16 :goto_0
.end method

.method public c()V
    .locals 5

    .prologue
    .line 3037
    iget-boolean v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->f:Z

    if-nez v2, :cond_0

    .line 3059
    :goto_0
    return-void

    .line 3043
    :cond_0
    const/4 v0, 0x1

    .line 3044
    .local v0, "append":Z
    :try_start_0
    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->e:I

    if-nez v2, :cond_1

    .line 3045
    const/4 v0, 0x0

    .line 3047
    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->b:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3049
    .local v1, "writer":Ljava/io/FileWriter;
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3050
    iget-object v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3052
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 3053
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 3055
    iget v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3056
    .end local v1    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 3062
    iget-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->f:Z

    if-eqz v0, :cond_0

    .line 3063
    iget-object v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3064
    invoke-virtual {p0}, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->c()V

    .line 3065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/homepage/servicemanage/DragSortListView$f;->f:Z

    .line 3067
    :cond_0
    return-void
.end method
