import { createStore, applyMiddleware } from 'redux';
import rootReducer from '../reducers/root_reducer';


const configureStore = (preloadedState = {}) => {
  const store = createStore(
    rootReducer, 
    preloadedState,
    applyMiddleware(addLoggingToDispatch, randomMiddleware)
    );
  store.subscribe(() => {
    localStorage.state = JSON.stringify(store.getState());
  });
  return store;
}

const addLoggingToDispatch = store => next => action => {
  console.log(store.getState());
  console.log(action);
  next(action);
  console.log(store.getState());
};

const randomMiddleware = store => next => action => {
  console.log("Silly");  
  next(action);
}

export default configureStore;
