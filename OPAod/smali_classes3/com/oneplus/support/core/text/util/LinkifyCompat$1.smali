.class Lcom/oneplus/support/core/text/util/LinkifyCompat$1;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/text/util/LinkifyCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;)I
    .locals 4

    iget v0, p1, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v1, p2, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v1, p2, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->start:I

    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget v0, p1, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, p2, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-ge v0, v1, :cond_2

    return v3

    :cond_2
    iget v0, p1, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v1, p2, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;->end:I

    if-le v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;

    check-cast p2, Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/support/core/text/util/LinkifyCompat$1;->compare(Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;Lcom/oneplus/support/core/text/util/LinkifyCompat$LinkSpec;)I

    move-result p1

    return p1
.end method
