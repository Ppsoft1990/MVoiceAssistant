.class public Lcom/iflytek/greenplug/common/utils/ComponentNameComparator;
.super Ljava/lang/Object;
.source "ComponentNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/ComponentName;Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "lhs"    # Landroid/content/ComponentName;
    .param p2, "rhs"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x0

    .line 12
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 22
    :cond_0
    :goto_0
    return v0

    .line 14
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 15
    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 17
    const/4 v0, -0x1

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 22
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Landroid/content/ComponentName;

    check-cast p2, Landroid/content/ComponentName;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/greenplug/common/utils/ComponentNameComparator;->compare(Landroid/content/ComponentName;Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method
