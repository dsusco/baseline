jQuery.fn.extend((function () {
  var idCounters = {};

  return {
    id: function (prefix) {
      prefix || (prefix = 'baseline');

      if (!idCounters[prefix]) {
        idCounters[prefix] = 0
      }

      return this.each(function () {
        if (typeof this.id !== 'string' || this.id === '') {
          this.id = '' + prefix + '_' + ++idCounters[prefix];
        }
      });
    }
  };
}()));
